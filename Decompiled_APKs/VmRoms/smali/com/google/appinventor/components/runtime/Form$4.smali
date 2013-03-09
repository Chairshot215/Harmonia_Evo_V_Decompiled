.class Lcom/google/appinventor/components/runtime/Form$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->addExitButtonToMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$4;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$4;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #calls: Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$300(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    return v0
.end method
