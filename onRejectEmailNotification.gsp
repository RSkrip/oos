<%@ page import="grails.util.Environment; ru.pscb.grb.special.Constants"
%>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
</head>

<body>
<div>
    <table cellpadding="0" cellspacing="0" border="0" bgcolor="#f5f6f7" style="width: 100%; border:0;background-color: #f5f6f7;">
        <tr>
            <td style="text-align: left;background-color:#f5f6f7;padding:10px;">
                Это сообщение содержит информацию для технических специалистов&nbsp;&mdash; перешлите его по&nbsp;назначению, если необходимо.
            </td>
        </tr>
    </table>

    <p>Здравствуйте!</p>

    <p>Ваш сервер отправил платёжному шлюзу ПСКБ негативный ответ по&nbsp;следующим платежам в магазине <b class="name">${mp.name}</b> <g:if test="${mp.url}">(ID ..., URL ${mp.url})</g:if>:</p>

    <table style="background-color: #ffffff;border:0" border="0" cellspacing="0" cellpadding="0" bgcolor="#ffffff">
        <tbody>
        <tr>
            <th style="text-align: left;padding: 10px;background-color:#f5f6f7;">
                Номер платежа
            </th>
				<th style="text-align: left;padding: 10px;background-color:#f5f6f7;">
                Статус (код)
            </th>
            <th style="text-align: left;padding: 10px;background-color:#f5f6f7;">
                Статус (описание)
            </th>
            <th style="text-align: left;padding: 10px;background-color:#f5f6f7;">
                Дата создания
            </th>
            <th style="text-align: left;padding: 10px;background-color:#f5f6f7;">
                Дата изменения
            </th>
            <th style="text-align: left;padding: 10px;background-color:#f5f6f7;">
                Сумма платежа
            </th>
        </tr>


            <tr>
                <td style="line-height: 23px; text-align: left; padding: 10px; border-top: 1px solid #cccccc">
                    <g:if test="${Environment.current.name == 'stage'}">
                        <a href="https://oos-stage.pscb.ru/cabinet/payment/${payment.id}" target="_blank">${payment.extId}</a>
                    </g:if>
                    <g:elseif test="${Environment.current.name == 'demo'}">
                        <a href="https://oosdemo.pscb.ru/cabinet/payment/${payment.id}" target="_blank">${payment.extId}</a>
                    </g:elseif>
                    <g:else>
                        <a href="https://oos.pscb.ru/cabinet/payment/${payment.id}" target="_blank">${payment.extId}</a>
                    </g:else>
                </td>
					 <td style="line-height: 23px; text-align: left; padding: 10px; border-top: 1px solid #cccccc">
                    ...
                </td>
                <td style="line-height: 23px; text-align: left; padding: 10px; border-top: 1px solid #cccccc">
                    <common:paymentState payment="${payment}" />
                </td>
                <td style="line-height: 23px; text-align: left; padding: 10px; border-top: 1px solid #cccccc">
                    ${payment.dateCreated.dateTimeString}
                </td>
                <td style="line-height: 23px; text-align: left; padding: 10px; border-top: 1px solid #cccccc">
                    ${payment.stateDate.dateTimeString}
                </td>
                <td style="line-height: 23px; text-align: left; padding: 10px; border-top: 1px solid #cccccc">
                    ${payment.amount} руб.
                </td>
            </tr>

        </tbody>
    </table>

    <p>Рекомендуем проверить статусы указанных платежей в&nbsp;вашей системе и&nbsp;корректность обработки оповещений согласно <a href="http://docs.pscb.ru/oos/api.html#api-magazina-opoveshenie-magazina" target="_blank">документации.</a></p>
    <p>Если у&nbsp;вас возникли вопросы по&nbsp;данному сообщению, пожалуйста, обратитесь в&nbsp;поддержку по&nbsp;адресу: <a href="mailto:payments@pscb.ru">payments@pscb.ru</a>.</p>
    <p style="margin-top:1.5em;color:#4d4f53">С уважением, АО Банк "ПСКБ"</p>
    <img border="0" width="113" style="display: block; width:113px; max-width:113px;" src="https://www.pscb.ru/bitrix/templates/pscb/images/logo.png" alt="АО Банк ПСКБ"/>
    <p style="color:#9e9e9e">Вы&nbsp;получили это письмо в&nbsp;соответствии с&nbsp;настройками уведомлений в&nbsp;<a href="https://oos.pscb.ru/" target="_blank">личном кабинете</a>. Сообщение сформировано автоматически и&nbsp;не&nbsp;требует вашего ответа.</p>

</div>
</body>
</html>