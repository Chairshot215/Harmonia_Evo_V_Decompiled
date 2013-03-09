.class Lcom/android/phone/nbpcd/VZWConvSetting$1;
.super Ljava/lang/Object;
.source "VZWConvSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/VZWConvSetting;->prepareUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/VZWConvSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/VZWConvSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/phone/nbpcd/VZWConvSetting$1;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/nbpcd/VZWConvSetting$1;->this$0:Lcom/android/phone/nbpcd/VZWConvSetting;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/VZWConvSetting;->finish()V

    .line 80
    return-void
.end method
