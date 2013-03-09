.class final Lcom/android/htccontacts/ui/EditExchangeNameActivity$DiaplayNameSelectionListener;
.super Ljava/lang/Object;
.source "EditExchangeNameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/EditExchangeNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiaplayNameSelectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$DiaplayNameSelectionListener;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;Lcom/android/htccontacts/ui/EditExchangeNameActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditExchangeNameActivity$DiaplayNameSelectionListener;-><init>(Lcom/android/htccontacts/ui/EditExchangeNameActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditExchangeNameActivity$DiaplayNameSelectionListener;->this$0:Lcom/android/htccontacts/ui/EditExchangeNameActivity;

    #calls: Lcom/android/htccontacts/ui/EditExchangeNameActivity;->selectDiaplayType(I)V
    invoke-static {v0, p2}, Lcom/android/htccontacts/ui/EditExchangeNameActivity;->access$300(Lcom/android/htccontacts/ui/EditExchangeNameActivity;I)V

    .line 455
    return-void
.end method
