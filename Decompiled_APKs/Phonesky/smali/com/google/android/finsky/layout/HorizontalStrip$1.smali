.class Lcom/google/android/finsky/layout/HorizontalStrip$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/HorizontalStrip;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/HorizontalStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/finsky/layout/HorizontalStrip$1;->this$0:Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip$1;->this$0:Lcom/google/android/finsky/layout/HorizontalStrip;

    #calls: Lcom/google/android/finsky/layout/HorizontalStrip;->syncChildViews()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->access$000(Lcom/google/android/finsky/layout/HorizontalStrip;)V

    .line 85
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/layout/HorizontalStrip$1;->this$0:Lcom/google/android/finsky/layout/HorizontalStrip;

    #calls: Lcom/google/android/finsky/layout/HorizontalStrip;->recreateChildViews()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->access$100(Lcom/google/android/finsky/layout/HorizontalStrip;)V

    .line 90
    return-void
.end method
