.class Lcom/android/phone/nbpcd/AssistedDialingSetting$1;
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
    .line 510
    iput-object p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$1;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$1;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->save()V

    .line 513
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$1;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->finish()V

    .line 514
    return-void
.end method
