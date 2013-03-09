.class public interface abstract Lcom/htc/utils/ulog/ULogData;
.super Ljava/lang/Object;
.source "ULogData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/utils/ulog/ULogData$ULogItem;
    }
.end annotation


# virtual methods
.method public abstract addRef()V
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract getData()Lcom/htc/utils/ulog/ULogData$ULogItem;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract recycle()V
.end method
