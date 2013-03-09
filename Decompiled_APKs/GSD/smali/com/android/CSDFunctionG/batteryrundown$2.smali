.class Lcom/android/CSDFunctionG/batteryrundown$2;
.super Ljava/lang/Object;
.source "batteryrundown.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/batteryrundown;->RemoveCharger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/batteryrundown;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/batteryrundown;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/CSDFunctionG/batteryrundown$2;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown$2;->this$0:Lcom/android/CSDFunctionG/batteryrundown;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/batteryrundown;->finish()V

    .line 264
    return-void
.end method
