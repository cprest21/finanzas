# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
	OperationType.delete_all
  OperationType.create([{ title: 'Ingreso de efectivo' }, { title: 'Cajero' }, { title: 'Cheque' }, { title: 'Depósito de efectivo' }, { title: 'Prestamo' }, { title: 'Recibo' }, { title: 'Transferencia' }, { title: 'Donación' }])

  Account.delete_all
  Account.create([{ title: 'Cuenta Banco de Entre Ríos' }, { title: 'Cuenta Santander Río' }, { title: 'Cuenta Galicia' }, { title: 'Efectivo' }, { title: 'Ahorro' }])

  Budget.delete_all
  Budget.create([{name: 'Presupuesto Abril', start_date: DateTime.new(2014, 04, 01), end_date: DateTime.new(2014, 04, 30)}])

  BudgetCategory.delete_all
  BudgetCategory.create([{budget_id: 1, name: 'Alimentación'}, {budget_id: 1, name: 'Servicios'}, {budget_id: 1, name: 'Transporte'}, {budget_id: 1, name: 'Ahorro'}, {budget_id: 1, name: 'Estudio'}, {budget_id: 1, name: 'Deudas'}])
