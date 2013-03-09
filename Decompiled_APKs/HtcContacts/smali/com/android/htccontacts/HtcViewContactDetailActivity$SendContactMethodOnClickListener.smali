.class Lcom/android/htccontacts/HtcViewContactDetailActivity$SendContactMethodOnClickListener;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendContactMethodOnClickListener"
.end annotation


# instance fields
.field mActions:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcViewContactDetailActivity;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "list"

    .prologue
    .line 2906
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SendContactMethodOnClickListener;->this$0:Lcom/android/htccontacts/HtcViewContactDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2907
    iput-object p2, p0, Lcom/android/htccontacts/HtcViewContactDetailActivity$SendContactMethodOnClickListener;->mActions:[Ljava/lang/CharSequence;

    .line 2908
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2927
    return-void
.end method
