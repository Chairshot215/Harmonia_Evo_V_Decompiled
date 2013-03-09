.class Lcom/android/htcdialer/Dialer$25;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->showNumberSelectedDialog([Lcom/android/htcdialer/search/SearchablePhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7723
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$25;->this$0:Lcom/android/htcdialer/Dialer;

    iput-object p2, p0, Lcom/android/htcdialer/Dialer$25;->val$items:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7725
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$25;->this$0:Lcom/android/htcdialer/Dialer;

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$25;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/Dialer;->placeCall(Ljava/lang/String;)V

    .line 7726
    return-void
.end method
