.class Lcom/android/mms/util/DraftCache$2;
.super Landroid/database/ContentObserver;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DraftCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DraftCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DraftCache;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mms/util/DraftCache$2;->this$0:Lcom/android/mms/util/DraftCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfUpdate"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/util/DraftCache$2;->this$0:Lcom/android/mms/util/DraftCache;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->refresh(J)V

    .line 111
    return-void
.end method
