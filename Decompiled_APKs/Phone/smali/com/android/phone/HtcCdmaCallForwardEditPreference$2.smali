.class Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;
.super Ljava/lang/Object;
.source "HtcCdmaCallForwardEditPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaCallForwardEditPreference;->showAlertDialog(IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

.field final synthetic val$actionType:I

.field final synthetic val$enable:Z

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaCallForwardEditPreference;IZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->this$0:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iput p2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->val$actionType:I

    iput-boolean p3, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->val$enable:Z

    iput-object p4, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->val$number:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->this$0:Lcom/android/phone/HtcCdmaCallForwardEditPreference;

    iget v1, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->val$actionType:I

    iget-boolean v2, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->val$enable:Z

    iget-object v3, p0, Lcom/android/phone/HtcCdmaCallForwardEditPreference$2;->val$number:Ljava/lang/String;

    #calls: Lcom/android/phone/HtcCdmaCallForwardEditPreference;->dialSpecificNumberToForward(IZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/HtcCdmaCallForwardEditPreference;->access$000(Lcom/android/phone/HtcCdmaCallForwardEditPreference;IZLjava/lang/String;)V

    .line 125
    return-void
.end method
