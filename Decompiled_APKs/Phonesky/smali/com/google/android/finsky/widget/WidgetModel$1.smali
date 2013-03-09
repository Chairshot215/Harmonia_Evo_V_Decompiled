.class Lcom/google/android/finsky/widget/WidgetModel$1;
.super Ljava/lang/Object;
.source "WidgetModel.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/WidgetModel;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/WidgetModel;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$imageType:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/WidgetModel;Lcom/google/android/finsky/api/model/Document;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetModel$1;->this$0:Lcom/google/android/finsky/widget/WidgetModel;

    iput-object p2, p0, Lcom/google/android/finsky/widget/WidgetModel$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    iput p3, p0, Lcom/google/android/finsky/widget/WidgetModel$1;->val$imageType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/widget/WidgetModel$1;->this$0:Lcom/google/android/finsky/widget/WidgetModel;

    iget-object v1, p0, Lcom/google/android/finsky/widget/WidgetModel$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    iget v2, p0, Lcom/google/android/finsky/widget/WidgetModel$1;->val$imageType:I

    #calls: Lcom/google/android/finsky/widget/WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/finsky/widget/WidgetModel;->access$000(Lcom/google/android/finsky/widget/WidgetModel;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;I)V

    .line 151
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/WidgetModel$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
