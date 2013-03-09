.class Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$5;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$5;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    #getter for: Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mMenu:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->access$6(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$5;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->dispatchInvalidateOptionsMenu()V

    :cond_0
    return-void
.end method
