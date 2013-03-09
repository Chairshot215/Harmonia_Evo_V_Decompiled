.class Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;
.super Ljava/lang/Object;
.source "SimpleVCardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SimpleVCardListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VCardInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public isPrimary:Z

.field public label:Ljava/lang/String;

.field private mEntryType:I

.field final synthetic this$0:Lcom/android/mms/ui/SimpleVCardListViewAdapter;

.field public type:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimpleVCardListViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->this$0:Lcom/android/mms/ui/SimpleVCardListViewAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 640
    iget v0, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 640
    iput p1, p0, Lcom/android/mms/ui/SimpleVCardListViewAdapter$VCardInfo;->mEntryType:I

    return p1
.end method
