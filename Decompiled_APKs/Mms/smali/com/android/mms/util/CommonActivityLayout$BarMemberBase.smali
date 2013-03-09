.class public Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;
.super Ljava/lang/Object;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarMemberBase"
.end annotation


# instance fields
.field mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getType()Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mType:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->mView:Landroid/view/View;

    return-object v0
.end method
