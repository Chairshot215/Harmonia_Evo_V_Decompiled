.class Lcom/android/htccontacts/DeDuplicationActivity$DupSet;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DupSet"
.end annotation


# instance fields
.field major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

.field sub_items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->major_item:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/DeDuplicationActivity$DupSet;->sub_items:Ljava/util/ArrayList;

    return-void
.end method
