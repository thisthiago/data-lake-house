resource "aws_lambda_function" "executa_emr" {
  filename      = "lambda_function_payload.zip"
  #nome do arquivo
  function_name = var.lambda_function_name
  role          = aws_iam_role.lambda.arn
  #nome da função lambda
  handler       = "lambda_function.handler"
  memory_size   = 128
  timeout       = 30

  #controle do estado para caso estivermos trabalhando em um ambiente local
  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  #Linguagem de programação que será utilizada
  runtime = "python3.8"

}