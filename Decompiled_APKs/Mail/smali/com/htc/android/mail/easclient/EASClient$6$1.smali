.class Lcom/htc/android/mail/easclient/EASClient$6$1;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/easclient/EASClient$6;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient$6;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$6$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$6$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$6;

    iget-object v0, v0, Lcom/htc/android/mail/easclient/EASClient$6;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->updateWhenOpenedPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASClient;->access$1300(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$6$1;->this$1:Lcom/htc/android/mail/easclient/EASClient$6;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/EASClient$6;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->isUpdateWhenOpen:Z
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1200(Lcom/htc/android/mail/easclient/EASClient;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 452
    return-void
.end method
