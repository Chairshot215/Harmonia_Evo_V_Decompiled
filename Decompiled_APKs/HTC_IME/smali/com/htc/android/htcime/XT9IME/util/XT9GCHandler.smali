.class public Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;
.super Ljava/lang/Object;
.source "XT9GCHandler.java"


# static fields
.field protected static final CLASS_NAME:Ljava/lang/String; = "XT9GCHandler"

.field protected static final INFO_LOG:Z = true

.field static final TIME2GC:I = 0x5

.field static reqGC_cnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->reqGC_cnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestGC()V
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->reqGC_cnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->reqGC_cnt:I

    .line 19
    sget v0, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->reqGC_cnt:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 21
    const-string v0, "XT9GCHandler"

    const-string v1, "[requestGC] Request VM to do GC."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->reqGC_cnt:I

    .line 24
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 26
    :cond_0
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/XT9IME/util/XT9GCHandler;->reqGC_cnt:I

    .line 31
    return-void
.end method
