.class public Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;
.super Ljava/lang/Object;
.source "HandwritePatternToWord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/HandwritePatternToWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GestureMeta"
.end annotation


# instance fields
.field protected _patternName:Ljava/lang/String;

.field protected _patternPic:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/util/HandwritePatternToWord;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 351
    iput-object p1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->_patternName:Ljava/lang/String;

    .line 353
    iput-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GestureMeta;->_patternPic:Landroid/graphics/Bitmap;

    return-void
.end method
