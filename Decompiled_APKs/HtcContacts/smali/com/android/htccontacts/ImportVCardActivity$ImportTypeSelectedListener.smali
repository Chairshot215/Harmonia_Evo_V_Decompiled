.class Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportTypeSelectedListener"
.end annotation


# static fields
.field public static final IMPORT_ALL:I = 0x2

.field public static final IMPORT_MULTIPLE:I = 0x1

.field public static final IMPORT_ONE:I = 0x0

.field public static final IMPORT_TYPE_SIZE:I = 0x3


# instance fields
.field private mCurrentIndex:I

.field final synthetic this$0:Lcom/android/htccontacts/ImportVCardActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ImportVCardActivity;Lcom/android/htccontacts/ImportVCardActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/htccontacts/ImportVCardActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 632
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 633
    iget v0, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    packed-switch v0, :pswitch_data_0

    .line 641
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    .line 649
    :goto_0
    return-void

    .line 635
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    iget-object v1, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    #getter for: Lcom/android/htccontacts/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/htccontacts/ImportVCardActivity;->access$1000(Lcom/android/htccontacts/ImportVCardActivity;)Ljava/util/List;

    move-result-object v1

    #calls: Lcom/android/htccontacts/ImportVCardActivity;->importMultipleVCardFromSDCard(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->access$1100(Lcom/android/htccontacts/ImportVCardActivity;Ljava/util/List;)V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ImportVCardActivity;->showDialog(I)V

    goto :goto_0

    .line 644
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->this$0:Lcom/android/htccontacts/ImportVCardActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ImportVCardActivity;->finish()V

    goto :goto_0

    .line 647
    :cond_1
    iput p2, p0, Lcom/android/htccontacts/ImportVCardActivity$ImportTypeSelectedListener;->mCurrentIndex:I

    goto :goto_0

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
