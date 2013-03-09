.class public Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
.super Ljava/lang/Object;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBarComposer"
.end annotation


# instance fields
.field public mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

.field public mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

.field public mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

.field public mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 488
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_MIDDLE:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mHight:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    .line 489
    iput-object v1, p0, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mLeft:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 490
    iput-object v1, p0, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mCenter:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 491
    iput-object v1, p0, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;->mRight:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    return-void
.end method
