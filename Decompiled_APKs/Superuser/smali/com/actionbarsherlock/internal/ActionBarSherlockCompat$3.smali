.class Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$3;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[mNativeItemListener.onMenuItemClick] item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat$3;->this$0:Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;->mNativeItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->invoke()Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Options item \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found in mapping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
