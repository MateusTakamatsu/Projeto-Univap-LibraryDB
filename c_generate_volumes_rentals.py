from datetime import datetime, timedelta
import random


# ----------------------------------------------------------------------------------------------------
# Variáveis configuráveis para execução
# ----------------------------------------------------------------------------------------------------
nome_banco = 'library_db'
nome_tabela = 'returns'




vargas = []
for i in range(1040):
    randnum = random.randint(1, 10)
    vargas.append({
        'id': i+1,
        'num': random.randint(1,5)
    })





# ----------------------------------------------------------------------------------------------------
# Define um array de linhas para o script de inserção dos registros e insere as duas primeiras linhas
# ----------------------------------------------------------------------------------------------------
linhas_sql = [f'USE {nome_banco};', f'INSERT INTO {nome_tabela} (`returned_date`, `rental_id`, `employee_id`, `created_at`, `updated_at`) VALUES']



print("Iniciando a geração dos registros variados...")
for i in vargas:
    numsVol = []
    for j in range(i['num']):
        status = random.choice(['emprestado','devolvido','atrasado','perdido'])
        if randnum == 1:
            status = 'atrasado'
        if randnum == 2:
            status = 'perdido'
        numVol = random.randint(1,499)
        while numVol in numsVol:
            numVol = random.randint(1,499)
        nova_linha = f"({numVol}, {i['id']}, '{status}'),"
        linhas_sql.append(nova_linha)
        numsVol.append(numVol)
print("Registros gerados!")



# ----------------------------------------------------------------------------------------------------
# Transforma o array em um aqruivo de script SQL
# ----------------------------------------------------------------------------------------------------

# Substitui a vírgula no final do último registro por ponto e vírgula para encessar o SQL
linhas_sql[-1] = linhas_sql[-1].rstrip(',') + ';'

# Junta todas as linhas (mantendo a quebra de linhas entre elas) em um único texto
script_sql = "\n".join(linhas_sql)

# Cria um arquivo com o script de sql pronto para usar
with open("inserts.sql", "w") as f:
    f.write(script_sql)

print(f"Arquivo inserts.sql criado com os INSERTs")
