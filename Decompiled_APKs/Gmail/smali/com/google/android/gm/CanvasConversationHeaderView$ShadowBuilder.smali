.class Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "CanvasConversationHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/CanvasConversationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowBuilder"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mDragDesc:Ljava/lang/String;

.field private mDragDescX:I

.field private mDragDescY:I

.field private final mTouchX:I

.field private final mTouchY:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/gm/CanvasConversationHeaderView;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/CanvasConversationHeaderView;Landroid/view/View;III)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "count"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->this$0:Lcom/google/android/gm/CanvasConversationHeaderView;

    .line 1156
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1157
    iput-object p2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    .line 1158
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1159
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10001a

    invoke-static {v0, v1, p3}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    .line 1160
    iput p4, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchX:I

    .line 1161
    iput p5, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchY:I

    .line 1162
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 1177
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1178
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1179
    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$500()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->this$0:Lcom/google/android/gm/CanvasConversationHeaderView;

    iget-object v1, v1, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v1, v1, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1180
    iget-object v0, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescY:I

    int-to-float v2, v2

    invoke-static {}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$500()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1181
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 1166
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1167
    .local v1, width:I
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1168
    .local v0, height:I
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->this$0:Lcom/google/android/gm/CanvasConversationHeaderView;

    iget-object v2, v2, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->sendersX:I

    iput v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescX:I

    .line 1169
    iget-object v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->this$0:Lcom/google/android/gm/CanvasConversationHeaderView;

    iget-object v2, v2, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v2, v2, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectFontSize:I

    #calls: Lcom/google/android/gm/CanvasConversationHeaderView;->getPadding(II)I
    invoke-static {v0, v2}, Lcom/google/android/gm/CanvasConversationHeaderView;->access$300(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->this$0:Lcom/google/android/gm/CanvasConversationHeaderView;

    iget-object v3, v3, Lcom/google/android/gm/CanvasConversationHeaderView;->mCoordinates:Lcom/google/android/gm/ConversationHeaderViewCoordinates;

    iget v3, v3, Lcom/google/android/gm/ConversationHeaderViewCoordinates;->subjectAscent:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mDragDescY:I

    .line 1171
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 1172
    iget v2, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchX:I

    iget v3, p0, Lcom/google/android/gm/CanvasConversationHeaderView$ShadowBuilder;->mTouchY:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1173
    return-void
.end method
