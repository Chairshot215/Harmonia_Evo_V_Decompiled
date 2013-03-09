.class Lcom/htc/android/mail/easclient/EASSetting$8;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$8;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting$8;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASSetting;->access$300(Lcom/htc/android/mail/easclient/EASSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$8;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncMail(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
