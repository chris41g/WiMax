.class final Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature$1;
.super Ljava/lang/Object;
.source "Wimax4GManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    .registers 4
    .parameter "in"

    .prologue
    .line 901
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;-><init>()V

    .line 902
    .local v0, radioInfo:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    .line 903
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleMode:I

    .line 904
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nSleepMode:I

    .line 905
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleModeTimer:I

    .line 906
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nPseudoMode:I

    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMaxTemp:I

    .line 908
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMinTemp:I

    .line 909
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    .registers 3
    .parameter "size"

    .prologue
    .line 913
    new-array v0, p1, [Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature$1;->newArray(I)[Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    move-result-object v0

    return-object v0
.end method
