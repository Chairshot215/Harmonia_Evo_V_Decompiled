.class Lcom/android/phone/assist/EnhancedPlusCodeActivity$6;
.super Ljava/lang/Object;
.source "EnhancedPlusCodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/assist/EnhancedPlusCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/assist/EnhancedPlusCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$6;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/phone/assist/EnhancedPlusCodeActivity$6;->this$0:Lcom/android/phone/assist/EnhancedPlusCodeActivity;

    #calls: Lcom/android/phone/assist/EnhancedPlusCodeActivity;->selectCountry(I)V
    invoke-static {v0, p2}, Lcom/android/phone/assist/EnhancedPlusCodeActivity;->access$100(Lcom/android/phone/assist/EnhancedPlusCodeActivity;I)V

    .line 211
    return-void
.end method
