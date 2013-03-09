.class public Lcom/htc/wrap/android/util/HtcWrapEventLog$List;
.super Landroid/util/EventLog$List;
.source "HtcWrapEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/util/HtcWrapEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static getItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter "value"
    .parameter "pos"

    .prologue
    .line 14
    invoke-static {p0}, Lcom/htc/wrap/android/util/HtcWrapEventLog$List;->isEventLogList(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 15
    check-cast v0, Landroid/util/EventLog$List;

    .line 16
    .local v0, list:Landroid/util/EventLog$List;
    invoke-virtual {v0, p1}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 19
    .end local v0           #list:Landroid/util/EventLog$List;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNumItems(Ljava/lang/Object;)B
    .locals 2
    .parameter "value"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/htc/wrap/android/util/HtcWrapEventLog$List;->isEventLogList(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 24
    check-cast v0, Landroid/util/EventLog$List;

    .line 25
    .local v0, list:Landroid/util/EventLog$List;
    invoke-virtual {v0}, Landroid/util/EventLog$List;->getNumItems()B

    move-result v1

    .line 28
    .end local v0           #list:Landroid/util/EventLog$List;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEventLogList(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 10
    instance-of v0, p0, Landroid/util/EventLog$List;

    return v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "pos"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/util/EventLog$List;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNumItems()B
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/util/EventLog$List;->getNumItems()B

    move-result v0

    return v0
.end method
