.class final Lcom/android/mms/data/Contact$4;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact;->asyncUpdateContacts(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contacts:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/mms/data/Contact$4;->val$contacts:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    const-string v2, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    const-string v2, "asyncUpdateContacts..."

    #calls: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/Contact$4;->val$contacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 218
    .local v0, c:Lcom/android/mms/data/Contact;
    #calls: Lcom/android/mms/data/Contact;->updateContact(Lcom/android/mms/data/Contact;)V
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 220
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method
