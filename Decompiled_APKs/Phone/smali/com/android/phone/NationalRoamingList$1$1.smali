.class Lcom/android/phone/NationalRoamingList$1$1;
.super Ljava/lang/Object;
.source "NationalRoamingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NationalRoamingList$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/NationalRoamingList$1;

.field final synthetic val$dialog1:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/android/phone/NationalRoamingList$1;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/phone/NationalRoamingList$1$1;->this$1:Lcom/android/phone/NationalRoamingList$1;

    iput-object p2, p0, Lcom/android/phone/NationalRoamingList$1$1;->val$dialog1:Landroid/content/DialogInterface;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dia"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/phone/NationalRoamingList$1$1;->val$dialog1:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 180
    return-void
.end method
