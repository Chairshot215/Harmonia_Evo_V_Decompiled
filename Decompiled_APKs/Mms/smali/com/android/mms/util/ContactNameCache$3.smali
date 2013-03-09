.class Lcom/android/mms/util/ContactNameCache$3;
.super Ljava/lang/Object;
.source "ContactNameCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ContactNameCache;->putIntoContactNameCacheIfNeed(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ContactNameCache;

.field final synthetic val$rList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ContactNameCache;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/android/mms/util/ContactNameCache$3;->this$0:Lcom/android/mms/util/ContactNameCache;

    iput-object p2, p0, Lcom/android/mms/util/ContactNameCache$3;->val$rList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1067
    iget-object v6, p0, Lcom/android/mms/util/ContactNameCache$3;->val$rList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/mms/ui/RecipientList$Recipient;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/mms/ui/RecipientList$Recipient;

    .line 1068
    .local v5, rr:[Lcom/android/mms/ui/RecipientList$Recipient;
    move-object v1, v5

    .local v1, arr$:[Lcom/android/mms/ui/RecipientList$Recipient;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v1, v2

    .line 1069
    .local v4, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iget-object v6, v4, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v4, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1000()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v4, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1073
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1000()Ljava/util/Map;

    move-result-object v6

    iget-object v7, v4, Lcom/android/mms/ui/RecipientList$Recipient;->name:Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_0
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1100()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, v4, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 1077
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->access$1100()Ljava/util/Map;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/mms/ui/RecipientList$Recipient;->person_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    .end local v0           #address:Ljava/lang/String;
    :cond_2
    iget-object v0, v4, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    goto :goto_1

    .line 1080
    .end local v4           #r:Lcom/android/mms/ui/RecipientList$Recipient;
    :cond_3
    return-void
.end method
