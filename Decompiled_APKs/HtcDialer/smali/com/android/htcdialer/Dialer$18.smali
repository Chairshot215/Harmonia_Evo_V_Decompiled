.class Lcom/android/htcdialer/Dialer$18;
.super Ljava/lang/Thread;
.source "Dialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->viewContactCard(JZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$isSIM:Z

.field final synthetic val$personId:J

.field final synthetic val$tab:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;JZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3978
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$18;->this$0:Lcom/android/htcdialer/Dialer;

    iput-wide p2, p0, Lcom/android/htcdialer/Dialer$18;->val$personId:J

    iput-boolean p4, p0, Lcom/android/htcdialer/Dialer$18;->val$isSIM:Z

    iput-object p5, p0, Lcom/android/htcdialer/Dialer$18;->val$tab:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3980
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3982
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3983
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3985
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/android/htcdialer/Dialer$18;->val$personId:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 3986
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$18;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htcdialer/Dialer;->access$2500(Lcom/android/htcdialer/Dialer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/htcdialer/Dialer$18;->val$personId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 3991
    .local v1, uriLookup:Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/android/htcdialer/Dialer$18;->val$isSIM:Z

    if-eqz v2, :cond_0

    .line 3992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.anddroid.contacts.sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3996
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3998
    .end local v1           #uriLookup:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$18;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v2, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    .line 4005
    :cond_2
    :goto_0
    return-void

    .line 4000
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$18;->this$0:Lcom/android/htcdialer/Dialer;

    iget-wide v3, p0, Lcom/android/htcdialer/Dialer$18;->val$personId:J

    iget-boolean v5, p0, Lcom/android/htcdialer/Dialer$18;->val$isSIM:Z

    iget-object v6, p0, Lcom/android/htcdialer/Dialer$18;->val$tab:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/Dialer;->generateViewContactIntent(JZLjava/lang/String;)Landroid/content/Intent;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/htcdialer/Dialer;->access$2600(Lcom/android/htcdialer/Dialer;JZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4001
    .restart local v0       #intent:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 4002
    iget-object v2, p0, Lcom/android/htcdialer/Dialer$18;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v2, v0}, Lcom/android/htcdialer/Dialer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
