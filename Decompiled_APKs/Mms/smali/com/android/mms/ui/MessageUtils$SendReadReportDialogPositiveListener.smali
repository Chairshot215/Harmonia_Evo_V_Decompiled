.class public Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendReadReportDialogPositiveListener"
.end annotation


# instance fields
.field final mCallback:Ljava/lang/Runnable;

.field final mContext:Landroid/content/Context;

.field final mRecMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mStatus:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "status"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1726
    .local p2, recipientMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1727
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mContext:Landroid/content/Context;

    .line 1728
    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mRecMap:Ljava/util/Map;

    .line 1729
    iput p3, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mStatus:I

    .line 1730
    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mCallback:Ljava/lang/Runnable;

    .line 1731
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1734
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mRecMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1735
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mStatus:I

    invoke-static {v4, v2, v3, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1739
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$SendReadReportDialogPositiveListener;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1741
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
