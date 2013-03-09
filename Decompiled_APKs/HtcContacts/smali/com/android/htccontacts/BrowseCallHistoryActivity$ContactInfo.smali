.class final Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;
.super Ljava/lang/Object;
.source "BrowseCallHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseCallHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactInfo"
.end annotation


# static fields
.field public static EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;


# instance fields
.field public cName:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public personId:J

.field public recordNumber:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 569
    new-instance v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    invoke-direct {v0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;-><init>()V

    sput-object v0, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;->EMPTY:Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/BrowseCallHistoryActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseCallHistoryActivity$ContactInfo;-><init>()V

    return-void
.end method
