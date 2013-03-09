.class Lcom/htc/android/mail/easclient/EASSetting$4;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASSetting;->setupLayout()V
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
    .line 297
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$4;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/accounts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$4;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$4;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    const-class v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "intent.eas.mode.wizard"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const-string v2, "intent.eas.from_where"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$4;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mFromWhere:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$2000(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$4;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-virtual {v2, v0, v5}, Lcom/htc/android/mail/easclient/EASSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 305
    return v5
.end method
