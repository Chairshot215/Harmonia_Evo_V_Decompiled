.class Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;
.super Ljava/lang/Thread;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->insertLoginUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iput-object p2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    #calls: Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->getRawId()J
    invoke-static {v6}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->access$100(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    #getter for: Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->uri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->access$000(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "account_name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sourceid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=? AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mimetype"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "DeviceOnly"

    aput-object v8, v7, v10

    const-string v8, "HTC"

    aput-object v8, v7, v11

    const/4 v8, 0x2

    const-string v9, "HTC_01"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v9, v9, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_LOGIN_ID:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    const-string v6, "mimetype"

    iget-object v7, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v7, v7, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_LOGIN_ID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "data1"

    iget-object v7, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->val$uid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    #getter for: Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->uri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->access$000(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    invoke-virtual {v6, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v6, v6, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIME_LOGIN_ID inserted for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->this$0:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;

    iget-object v8, v8, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
