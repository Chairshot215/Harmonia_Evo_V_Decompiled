.class Lcom/htc/android/mail/MailProvider$1;
.super Ljava/lang/Object;
.source "MailProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailProvider;

.field final synthetic val$protocol:I

.field final synthetic val$rowId:J

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailProvider;JLandroid/content/ContentValues;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3176
    iput-object p1, p0, Lcom/htc/android/mail/MailProvider$1;->this$0:Lcom/htc/android/mail/MailProvider;

    iput-wide p2, p0, Lcom/htc/android/mail/MailProvider$1;->val$rowId:J

    iput-object p4, p0, Lcom/htc/android/mail/MailProvider$1;->val$values:Landroid/content/ContentValues;

    iput p5, p0, Lcom/htc/android/mail/MailProvider$1;->val$protocol:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider$1;->this$0:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/android/mail/MailProvider$1;->val$rowId:J

    iget-object v3, p0, Lcom/htc/android/mail/MailProvider$1;->val$values:Landroid/content/ContentValues;

    const-string v4, "_emailaddress"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/mail/MailProvider$1;->val$values:Landroid/content/ContentValues;

    const-string v5, "_password"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/mail/MailProvider$1;->val$protocol:I

    iget-object v6, p0, Lcom/htc/android/mail/MailProvider$1;->val$values:Landroid/content/ContentValues;

    const-string v7, "_provider"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/MailProvider$1;->val$values:Landroid/content/ContentValues;

    const-string v8, "_poll_frequency_number"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/htc/android/mail/MailProvider$1;->val$values:Landroid/content/ContentValues;

    const-string v9, "_refreshMailWhenOpenFolder"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/htc/android/mail/MailProvider;->addSyncAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 3185
    return-void
.end method
