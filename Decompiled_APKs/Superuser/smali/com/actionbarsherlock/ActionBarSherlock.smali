.class public abstract Lcom/actionbarsherlock/ActionBarSherlock;
.super Ljava/lang/Object;


# static fields
.field private static final CONSTRUCTOR_ARGS:[Ljava/lang/Class; = null

.field protected static final DEBUG:Z = true

.field public static final FLAG_ALWAYS_COMPAT:I = 0x2

.field public static final FLAG_CUSTOM_IMPLEMENTATION:I = 0x4

.field public static final FLAG_DELEGATE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ActionBarSherlock"


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field protected final mIsDelegate:Z

.field protected mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/app/Activity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/actionbarsherlock/ActionBarSherlock;->CONSTRUCTOR_ARGS:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[<ctor>] activity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mIsDelegate:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrap(Landroid/app/Activity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockCompat;-><init>(Landroid/app/Activity;I)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/internal/ActionBarSherlockNative;-><init>(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static wrap(Landroid/app/Activity;ILjava/lang/Class;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 4

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/actionbarsherlock/ActionBarSherlock;->CONSTRUCTOR_ARGS:[Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ActionBarSherlock"

    const-string v2, "Unable to instantiate custom ActionBarSherlock implementation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    invoke-static {p0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;I)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ActionBarSherlock"

    const-string v2, "Unable to instantiate custom ActionBarSherlock implementation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ActionBarSherlock"

    const-string v2, "Unable to instantiate custom ActionBarSherlock implementation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "ActionBarSherlock"

    const-string v2, "Unable to instantiate custom ActionBarSherlock implementation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v0

    const-string v1, "ActionBarSherlock"

    const-string v2, "Unable to instantiate custom ActionBarSherlock implementation."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method protected final callbackCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4

    const-string v0, "ActionBarSherlock"

    const-string v1, "[callbackCreateOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;->onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[callbackCreateOptionsMenu] returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final callbackOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[callbackOptionsItemSelected] item: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;

    invoke-interface {v0, v1, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;->onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[callbackOptionsItemSelected] returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final callbackPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4

    const-string v0, "ActionBarSherlock"

    const-string v1, "[callbackPrepareOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;->onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "ActionBarSherlock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[callbackPrepareOptionsMenu] returning "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock$OnPrepareOptionsMenuListener;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchCloseOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public abstract dispatchCreateOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract dispatchInvalidateOptionsMenu()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchOpenOptionsMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public dispatchPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public dispatchPause()V
    .locals 0

    return-void
.end method

.method public dispatchPostCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public dispatchPostResume()V
    .locals 0

    return-void
.end method

.method public abstract dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public dispatchStop()V
    .locals 0

    return-void
.end method

.method public dispatchTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    return-void
.end method

.method public abstract getActionBar()Lcom/actionbarsherlock/app/ActionBar;
.end method

.method public getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
    .locals 2

    const-string v0, "ActionBarSherlock"

    const-string v1, "[getMenuInflater]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    invoke-virtual {p0}, Lcom/actionbarsherlock/ActionBarSherlock;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    return-object v0

    :cond_1
    new-instance v0, Lcom/actionbarsherlock/view/MenuInflater;

    iget-object v1, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mMenuInflater:Lcom/actionbarsherlock/view/MenuInflater;

    goto :goto_0
.end method

.method protected abstract getThemedContext()Landroid/content/Context;
.end method

.method public abstract hasFeature(I)Z
.end method

.method public abstract requestFeature(I)Z
.end method

.method public abstract setContentView(I)V
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setContentView] view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setProgressBarIndeterminate(Z)V
.end method

.method public abstract setProgressBarIndeterminateVisibility(Z)V
.end method

.method public abstract setProgressBarVisibility(Z)V
.end method

.method public abstract setSecondaryProgress(I)V
.end method

.method public setTitle(I)V
    .locals 3

    const-string v0, "ActionBarSherlock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[setTitle] resId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/actionbarsherlock/ActionBarSherlock;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setUiOptions(I)V
.end method

.method public abstract setUiOptions(II)V
.end method

.method public abstract startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
.end method
