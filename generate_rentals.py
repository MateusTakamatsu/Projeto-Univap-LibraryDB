from datetime import datetime, timedelta
import random

# Configurações
start_date = datetime(2024, 12, 3)
end_date = datetime(2025, 3, 3)
clients_range = list(range(1, 301))  # IDs de clientes: 1 a 300
employees_range = list(range(1, 11))  # IDs de funcionários: 1 a 10
lines_per_day = 16

# Inicialização
output_lines = []
used_clients_total = set()
numclients = 0

current_date = start_date

while current_date <= end_date:
    if current_date.weekday() < 5:  # Segunda a sexta
        clinets_used_this_day = []
        # Preencher as demais linhas do dia
        for i in range(lines_per_day):
            client_id = 0
            if current_date.weekday() == 1:
                numclients += 1
                client_id = numclients
            else:
                if i < 2:
                    numclients += 1
                    client_id = numclients
                    clinets_used_this_day.append(client_id)
                else:
                    allowed = [x for x in range(1, numclients) if x not in clinets_used_this_day]
                    if allowed:
                        client_id = random.choice(allowed)
                        clinets_used_this_day.append(client_id)

            withdrawal_date = current_date.strftime('%Y-%m-%d %H:%M:%S')
            planned_date = (current_date + timedelta(days=7)).strftime('%Y-%m-%d %H:%M:%S')
            employee_id = random.choice(employees_range)
            line = f"('{withdrawal_date}', '{planned_date}', NOW(), NOW(), {client_id}, {employee_id}),"
            output_lines.append(line)

    current_date += timedelta(days=1)

# Gerar arquivo de saída
with open("rentals_inserts.txt", "w", encoding="utf-8") as f:
    for line in output_lines:
        f.write(line + "\n")

print(f"{len(output_lines)} linhas geradas e salvas em 'rentals_inserts.txt'")
