.class Lcom/android/phone/nbpcd/AssistedDialingSetting$3;
.super Ljava/lang/Object;
.source "AssistedDialingSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/AssistedDialingSetting;->prepareUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$3;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$3;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->change2EditMode(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$400(Lcom/android/phone/nbpcd/AssistedDialingSetting;Z)V

    .line 543
    return-void
.end method
