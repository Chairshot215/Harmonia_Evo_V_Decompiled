.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code>  method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property. <p>This component can also receive text messages unless the <code>ReceivingEnabled</code> property is False.  When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECEIVE_SMS, android.permission.SEND_SMS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private receivingEnabled:Z

.field private smsManager:Landroid/telephony/gsm/SmsManager;

.field private smsReceiver:Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsReceiver:Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->smsReceiver:Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    const-string v0, "Simple"

    const-string v1, "Texting constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/gsm/SmsManager;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:Z

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/SmsMessage;
    .locals 6

    const/4 v4, 0x0

    const-string v0, "pdus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    new-array v1, v0, [[B

    move v2, v4

    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    aget-object v0, p0, v2

    check-cast v0, [B

    check-cast v0, [B

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    array-length v0, v1

    new-array v0, v0, [[B

    array-length v2, v0

    new-array v3, v2, [Landroid/telephony/gsm/SmsMessage;

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    aput-object v5, v0, v4

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/telephony/gsm/SmsMessage;->createFromPdu([B)Landroid/telephony/gsm/SmsMessage;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private prepareToDie()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsReceiver:Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->smsReceiver:Lcom/google/appinventor/components/runtime/Texting$SmsReceiver;

    return-void
.end method


# virtual methods
.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-void
.end method

.method public MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "Simple"

    const-string v1, "MessageReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MessageReceived"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public ReceivingEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:Z

    return-void
.end method

.method public ReceivingEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->receivingEnabled:Z

    return v0
.end method

.method public SendMessage()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/gsm/SmsManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public onDelete()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->prepareToDie()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->prepareToDie()V

    return-void
.end method
