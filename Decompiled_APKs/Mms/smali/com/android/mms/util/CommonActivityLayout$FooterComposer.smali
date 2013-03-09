.class public Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
.super Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FooterComposer"
.end annotation


# instance fields
.field public mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;-><init>()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    return-void
.end method
