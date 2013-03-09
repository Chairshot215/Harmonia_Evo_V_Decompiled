.class public Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;
.super Ljava/lang/Object;
.source "WidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/WidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromotionalItem"
.end annotation


# instance fields
.field public final developer:Ljava/lang/String;

.field public final doc:Lcom/google/android/finsky/api/model/Document;

.field public final image:Landroid/graphics/Bitmap;

.field public final imageType:I

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter "image"
    .parameter "imageType"
    .parameter "title"
    .parameter "developer"
    .parameter "doc"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->image:Landroid/graphics/Bitmap;

    .line 70
    iput p2, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->imageType:I

    .line 71
    iput-object p3, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->title:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->developer:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/google/android/finsky/widget/WidgetModel$PromotionalItem;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 74
    return-void
.end method
