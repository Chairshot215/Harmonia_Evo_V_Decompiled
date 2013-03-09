.class public Lcom/sprint/dsa/DsaDialogs;
.super Ljava/lang/Object;
.source "DsaDialogs.java"


# static fields
.field static final BACK_YES:I = 0x7

.field static final CLOSE:I = 0x2

.field static final DONE:I = 0x1

.field static final MAIN_MENU:I = 0x6

.field static final PRECLOSE:I = 0x3

.field static final RESET:I = 0x9

.field static final RESUME:I = 0x4

.field static final RETRY:I = 0x8

.field static final SAVE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "DSS"

.field public static ad:Landroid/app/AlertDialog;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    .line 26
    new-instance v0, Lcom/sprint/dsa/DsaDialogs$1;

    invoke-direct {v0}, Lcom/sprint/dsa/DsaDialogs$1;-><init>()V

    sput-object v0, Lcom/sprint/dsa/DsaDialogs;->mHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 9
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v2, "OK"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v7, v6

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static doneDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 9
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 181
    const-string v0, "DSS"

    const-string v1, "doneDialog:message too short"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v2, "Done"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v7, v6

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static noBackDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 9
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 134
    :cond_0
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 136
    :cond_1
    const-string v2, "OK"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v6, v5

    move v7, v5

    move-object v8, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public static pauseDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 9
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const-string v2, "Exit"

    const-string v3, "Auto-Resume"

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static popupDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "dsaClient"
    .parameter "msg"
    .parameter "title"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 173
    const-string v0, "DSS"

    const-string v1, "yesBackDialog:message too short"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v2, "Done"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move v6, v5

    move v7, v5

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static resetExitDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 10
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 188
    const-string v9, "Device is programmed but not able to connect!"

    .line 189
    .local v9, localMsg:Ljava/lang/String;
    if-eqz p1, :cond_0

    move-object v9, p1

    .line 190
    :cond_0
    const-string v2, "Reset"

    const-string v3, "Exit"

    const/16 v5, 0x9

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 191
    return-void
.end method

.method public static retryDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 9
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v2, "Exit"

    const-string v3, "Retry"

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static saveExitDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 10
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    .line 161
    const-string v9, "Would you like to save and exit, exit without saving or go to the main menu?"

    .line 162
    .local v9, localMsg:Ljava/lang/String;
    if-eqz p1, :cond_0

    move-object v9, p1

    .line 164
    :cond_0
    const-string v0, "Save"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const-string v0, "save"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 165
    :cond_1
    const-string v2, "Save"

    const-string v3, "Exit"

    const-string v4, "Main Menu"

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_2
    const-string v2, "Exit"

    const-string v3, "Main Menu"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 5
    .parameter "dsaClient"
    .parameter "message"
    .parameter "button1"
    .parameter "button2"
    .parameter "button3"
    .parameter "what1"
    .parameter "what2"
    .parameter "what3"
    .parameter "title"

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, firstMsg:Landroid/os/Message;
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 102
    iput p5, v0, Landroid/os/Message;->what:I

    .line 103
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 106
    .local v1, secondMsg:Landroid/os/Message;
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 107
    iput p6, v1, Landroid/os/Message;->what:I

    .line 108
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 111
    .local v2, thirdMsg:Landroid/os/Message;
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 112
    iput p7, v2, Landroid/os/Message;->what:I

    .line 113
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    .line 118
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 119
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v3, p2, v0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 120
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v3, p3, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 121
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v3, p4, v2}, Landroid/app/AlertDialog;->setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 122
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 124
    if-eqz p8, :cond_0

    .line 125
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v3, p8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    sget-object v3, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 130
    return-void
.end method

.method public static yesBackDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V
    .locals 9
    .parameter "dsaClient"
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v2, "Yes"

    const-string v3, "No"

    const/4 v5, 0x7

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/sprint/dsa/DsaDialogs;->threeButtonsDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_0
.end method
