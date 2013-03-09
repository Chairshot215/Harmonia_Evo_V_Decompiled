.class Lcom/android/CSDFunctionG/moretestitems$2;
.super Ljava/lang/Object;
.source "moretestitems.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/moretestitems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/moretestitems;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/moretestitems;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/CSDFunctionG/moretestitems$2;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/CSDFunctionG/moretestitems$2;->this$0:Lcom/android/CSDFunctionG/moretestitems;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/CSDFunctionG/moretestitems;->CheckAllchkbox(Z)V

    .line 246
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 247
    return-void
.end method
