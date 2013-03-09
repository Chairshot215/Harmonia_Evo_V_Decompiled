.class Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/view/Window$Callback;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$1;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    #calls: Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    invoke-static {v0, p2}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->access$0(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method
