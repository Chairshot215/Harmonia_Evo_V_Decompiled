.class public abstract Leu/chainfire/supersu/PreferenceListFragment;
.super Landroid/support/v4/app/ListFragment;


# instance fields
.field private a:Landroid/preference/PreferenceManager;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/ListView;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    new-instance v0, Leu/chainfire/supersu/PreferenceListFragment$1;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/PreferenceListFragment$1;-><init>(Leu/chainfire/supersu/PreferenceListFragment;)V

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->b:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic a(Leu/chainfire/supersu/PreferenceListFragment;)V
    .locals 2

    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;->c()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Leu/chainfire/supersu/PreferenceListFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method private b()Landroid/preference/PreferenceManager;
    .locals 4

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Activity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Leu/chainfire/supersu/PreferenceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Landroid/preference/PreferenceScreen;
    .locals 3

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "getPreferenceScreen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Leu/chainfire/supersu/PreferenceListFragment;->a:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "dispatchActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Leu/chainfire/supersu/PreferenceListFragment;->a:Landroid/preference/PreferenceManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;->b()Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->a:Landroid/preference/PreferenceManager;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->c:Landroid/widget/ListView;

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "dispatchActivityDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Leu/chainfire/supersu/PreferenceListFragment;->a:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "xml"

    iget v1, p0, Leu/chainfire/supersu/PreferenceListFragment;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v1, "dispatchActivityStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Leu/chainfire/supersu/PreferenceListFragment;->a:Landroid/preference/PreferenceManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/PreferenceListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->c:Landroid/widget/ListView;

    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/PreferenceListFragment;->setListShown(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/PreferenceListFragment;->a:Landroid/preference/PreferenceManager;

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/PreferenceListFragment;->a(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-class v0, Landroid/preference/PreferenceManager;

    const-string v2, "setPreferences"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/preference/PreferenceScreen;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Leu/chainfire/supersu/PreferenceListFragment;->a:Landroid/preference/PreferenceManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Leu/chainfire/supersu/PreferenceListFragment;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
