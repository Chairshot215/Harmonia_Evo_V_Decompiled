.class Lcom/android/htccontacts/MoveContactsActivity$AccountCount;
.super Ljava/lang/Object;
.source "MoveContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/MoveContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountCount"
.end annotation


# instance fields
.field dataSet:Ljava/lang/String;

.field mCount:I

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/htccontacts/MoveContactsActivity;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/MoveContactsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "type"
    .parameter "data"
    .parameter "count"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->this$0:Lcom/android/htccontacts/MoveContactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->name:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->type:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->dataSet:Ljava/lang/String;

    .line 158
    iput p5, p0, Lcom/android/htccontacts/MoveContactsActivity$AccountCount;->mCount:I

    .line 159
    return-void
.end method
