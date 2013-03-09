.class Lcom/android/mms/util/DraftCache$1;
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
    .line 96
    iput-object p1, p0, Lcom/android/mms/util/DraftCache$1;->this$0:Lcom/android/mms/util/DraftCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfUpdate"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/util/DraftCache$1;->this$0:Lcom/android/mms/util/DraftCache;

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 101
    return-void
.end method
