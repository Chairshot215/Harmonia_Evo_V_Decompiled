.class final Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerInfoQuery"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field numberLabel:Ljava/lang/String;

.field numberType:I

.field person:J

.field position:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 642
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$CallerInfoQuery;-><init>()V

    return-void
.end method
