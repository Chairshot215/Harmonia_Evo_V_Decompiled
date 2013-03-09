.class Lcom/google/android/gm/provider/Label$LabelContentObserver;
.super Landroid/database/ContentObserver;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LabelContentObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/gm/provider/Label;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/Label;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/android/gm/provider/Label$LabelContentObserver;->this$0:Lcom/google/android/gm/provider/Label;

    .line 785
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 786
    iput-object p2, p0, Lcom/google/android/gm/provider/Label$LabelContentObserver;->mContext:Landroid/content/Context;

    .line 787
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$LabelContentObserver;->this$0:Lcom/google/android/gm/provider/Label;

    iget-object v1, p0, Lcom/google/android/gm/provider/Label$LabelContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Label;->requery(Landroid/content/Context;)V

    .line 792
    return-void
.end method
