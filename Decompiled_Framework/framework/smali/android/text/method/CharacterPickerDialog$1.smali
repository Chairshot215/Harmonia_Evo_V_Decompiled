.class Landroid/text/method/CharacterPickerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/CharacterPickerDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->onConfigurationChanged()V

    :cond_0
    return-void
.end method
