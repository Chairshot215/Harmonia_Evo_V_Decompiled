.class Lcom/android/phone/CallForwardEditPreference$1;
.super Ljava/lang/Object;
.source "CallForwardEditPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallForwardEditPreference;->displayWarnDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;

.field final synthetic val$action:I

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/android/phone/CallForwardEditPreference;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iput p2, p0, Lcom/android/phone/CallForwardEditPreference$1;->val$action:I

    iput p3, p0, Lcom/android/phone/CallForwardEditPreference$1;->val$time:I

    iput-object p4, p0, Lcom/android/phone/CallForwardEditPreference$1;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference$1;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v1, p0, Lcom/android/phone/CallForwardEditPreference$1;->val$action:I

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference$1;->val$time:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$1;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallForwardEditPreference;->handleCF(IILjava/lang/String;)V

    .line 244
    return-void
.end method
