.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    return-void
.end method
