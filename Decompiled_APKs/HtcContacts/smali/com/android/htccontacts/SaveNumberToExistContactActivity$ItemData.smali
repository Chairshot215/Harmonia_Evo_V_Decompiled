.class Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;
.super Ljava/lang/Object;
.source "SaveNumberToExistContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemData"
.end annotation


# instance fields
.field public dataId:J

.field public label:Ljava/lang/String;

.field public type:I

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter "t"
    .parameter "l"
    .parameter "v"
    .parameter "id"

    .prologue
    .line 1007
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    .line 1008
    iput p1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    .line 1009
    iput-object p2, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->label:Ljava/lang/String;

    .line 1010
    iput-object p3, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    .line 1011
    iput-wide p4, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->dataId:J

    .line 1012
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemData( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$ItemData;->dataId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
