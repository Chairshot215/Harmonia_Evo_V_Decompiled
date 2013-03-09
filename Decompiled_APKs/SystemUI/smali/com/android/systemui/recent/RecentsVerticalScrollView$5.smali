.class Lcom/android/systemui/recent/RecentsVerticalScrollView$5;
.super Ljava/lang/Object;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->access$100(Lcom/android/systemui/recent/RecentsVerticalScrollView;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;->this$0:Lcom/android/systemui/recent/RecentsVerticalScrollView;

    iget v2, v2, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    return-void
.end method
