.class public Lcom/htc/android/htcime/util/AppUnbundleUtil;
.super Ljava/lang/Object;
.source "AppUnbundleUtil.java"


# static fields
.field public static final KEYCODE_FUNC_1:I = 0xd8

.field public static final KEYCODE_FUNC_2:I = 0xd9

.field public static final KEYCODE_FUNC_3:I = 0xda

.field public static final KEYCODE_FUNC_5:I = 0xdc

.field public static final KEYCODE_FUNC_6:I = 0xdd

.field public static final KEYCODE_FUNC_7:I = 0xde

.field public static final KEYCODE_FUNC_8:I = 0xdf

.field public static final KEYCODE_HTC_SHARE:I = 0xe3

.field public static final KEYCODE_QUECHAR:I = 0xe0

.field public static final SUPPORTS_PHONE_STORAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AppUnbundleUtil"

.field public static final TYPE_TEXT_VARIATION_POST_SPELLING:I = 0x800000

.field private static htcHardware:Landroid/os/IHtcHardwareService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/util/AppUnbundleUtil;->htcHardware:Landroid/os/IHtcHardwareService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigurationSkin(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1
    .parameter "conf"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    return-object v0
.end method

.method public static getCursorRectInWindow(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 5
    .parameter "tv"

    .prologue
    .line 96
    :try_start_0
    const-string v3, "android.widget.TextView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mInputMethodState"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 97
    .local v1, fld:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView$InputMethodState;

    .line 99
    .local v2, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v2, :cond_0

    .line 100
    iget-object v3, v2, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1           #fld:Ljava/lang/reflect/Field;
    .end local v2           #ims:Landroid/widget/TextView$InputMethodState;
    :goto_0
    return-object v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AppUnbundleUtil"

    const-string v4, "getCursorRectInWindow()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovableStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovableStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectionStart(Landroid/view/inputmethod/InputConnection;)I
    .locals 1
    .parameter "ic"

    .prologue
    .line 135
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public static getSupportedStorages()I
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v0

    return v0
.end method

.method public static getSystemShiftState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 61
    :try_start_0
    sget-object v1, Lcom/htc/android/htcime/util/AppUnbundleUtil;->htcHardware:Landroid/os/IHtcHardwareService;

    if-nez v1, :cond_0

    .line 62
    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    sput-object v1, Lcom/htc/android/htcime/util/AppUnbundleUtil;->htcHardware:Landroid/os/IHtcHardwareService;

    .line 63
    :cond_0
    sget-object v1, Lcom/htc/android/htcime/util/AppUnbundleUtil;->htcHardware:Landroid/os/IHtcHardwareService;

    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getCapsLedState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AppUnbundleUtil"

    const-string v2, "Can not get system shift state!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getText(Landroid/view/inputmethod/InputConnection;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "ic"

    .prologue
    .line 138
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTextAfterCursor(Landroid/view/inputmethod/InputConnection;III)Ljava/lang/CharSequence;
    .locals 1
    .parameter "ic"
    .parameter "n"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 144
    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;III)Ljava/lang/CharSequence;
    .locals 1
    .parameter "ic"
    .parameter "n"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 141
    invoke-interface {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(III)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static hasRemovableStorageSlot()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    return v0
.end method

.method public static initInputMethodState(Landroid/widget/TextView;)V
    .locals 5
    .parameter "tv"

    .prologue
    .line 85
    :try_start_0
    const-string v3, "android.widget.TextView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mInputMethodState"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    .local v1, fld:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView$InputMethodState;

    .line 88
    .local v2, ims:Landroid/widget/TextView$InputMethodState;
    if-nez v2, :cond_0

    .line 89
    new-instance v3, Landroid/widget/TextView$InputMethodState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #fld:Ljava/lang/reflect/Field;
    .end local v2           #ims:Landroid/widget/TextView$InputMethodState;
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AppUnbundleUtil"

    const-string v4, "initInputMethodState()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "roundCorner"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->setRoundedCornerEnabled(Z)V

    .line 77
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;ZZ)V
    .locals 0
    .parameter "view"
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 80
    return-void
.end method
