.class Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountCount"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field dataSet:Ljava/lang/String;

.field mCount:I

.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "type"
    .parameter "dataset"
    .parameter "count"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountName:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->accountType:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->dataSet:Ljava/lang/String;

    .line 128
    iput p5, p0, Lcom/android/htccontacts/DeDuplicationActivity$AccountCount;->mCount:I

    .line 129
    return-void
.end method
