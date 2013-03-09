.class public Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;
.super Ljava/lang/Object;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PreviewInfo"
.end annotation


# instance fields
.field mCutIdx:I

.field mHeight:I

.field mUpdate:Z

.field mWidth:I

.field final synthetic this$0:Lcom/htc/android/htcime/ui/CandidateView;

.field x:I

.field y:I


# direct methods
.method protected constructor <init>(Lcom/htc/android/htcime/ui/CandidateView;)V
    .locals 1
    .parameter

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->this$0:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mUpdate:Z

    return-void
.end method
